.class public final Lcom/tencent/mm/modelstat/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final czk:Ljava/lang/String;


# instance fields
.field private bOY:I

.field private cyL:I

.field private cyM:I

.field private cyN:I

.field private cyO:I

.field private cyP:I

.field private cyQ:I

.field private cyR:I

.field private cyS:I

.field private cyT:I

.field private cyU:I

.field private cyV:I

.field private cyW:I

.field private cyX:I

.field private cyY:I

.field private cyZ:I

.field private cza:I

.field private czb:I

.field private czc:I

.field private czd:I

.field private cze:I

.field private czf:I

.field private czg:I

.field private czh:I

.field private czi:I

.field private czj:I

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    const-string v1, "NetStatInfo: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "|- text in=%d/%dB, out=%d/%dB\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v1, "|- image in=%d/%dB, out=%d/%dB\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, "|- voice in=%d/%dB, out=%d/%dB\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v1, "|- video in=%d/%dB, out=%d/%dB\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, "|- mobile in=%dB/%dB, out=%dB/%dB\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, "`- wifi in=%dB/%dB, out=%dB/%dB\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/modelstat/f;->czk:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    .line 97
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->id:I

    .line 98
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyL:I

    .line 99
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyM:I

    .line 100
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    .line 101
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyO:I

    .line 102
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    .line 103
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyQ:I

    .line 104
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    .line 105
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyS:I

    .line 106
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    .line 107
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    .line 108
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    .line 109
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    .line 110
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    .line 112
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyY:I

    .line 113
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    .line 114
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cza:I

    .line 115
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    .line 116
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czc:I

    .line 117
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    .line 118
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->cze:I

    .line 119
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    .line 120
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    .line 121
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    .line 122
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    .line 123
    iput v1, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    .line 127
    return-void
.end method


# virtual methods
.method public final CP()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyL:I

    return v0
.end method

.method public final CQ()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    return v0
.end method

.method public final CR()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    return v0
.end method

.method public final CS()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    return v0
.end method

.method public final CT()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    return v0
.end method

.method public final CU()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    return v0
.end method

.method public final CV()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    return v0
.end method

.method public final CW()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    return v0
.end method

.method public final CX()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    return v0
.end method

.method public final a(Lcom/tencent/mm/modelstat/f;)Z
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x1000

    .line 135
    iget v0, p1, Lcom/tencent/mm/modelstat/f;->bOY:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    .line 137
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyM:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyM:I

    .line 138
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    .line 139
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyO:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyP:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyO:I

    .line 140
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyP:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    .line 141
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyQ:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyQ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyQ:I

    .line 142
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyR:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    .line 143
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyS:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyS:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyS:I

    .line 144
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    .line 145
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyU:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    .line 146
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyV:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    .line 147
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    .line 148
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    .line 150
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyY:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyZ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyY:I

    .line 151
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cyZ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    .line 152
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cza:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czb:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cza:I

    .line 153
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czb:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    .line 154
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czc:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czc:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czc:I

    .line 155
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    .line 156
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cze:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->cze:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cze:I

    .line 157
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    .line 158
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    .line 159
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    .line 160
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    .line 161
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    iget v1, p1, Lcom/tencent/mm/modelstat/f;->czj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    .line 163
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cL(I)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    .line 210
    return-void
.end method

.method public final convertFrom(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyL:I

    .line 297
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyM:I

    .line 298
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    .line 299
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyO:I

    .line 300
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    .line 301
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyQ:I

    .line 302
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    .line 303
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyS:I

    .line 304
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    .line 305
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    .line 306
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    .line 307
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    .line 308
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    .line 310
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyY:I

    .line 311
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    .line 312
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cza:I

    .line 313
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    .line 314
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czc:I

    .line 315
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    .line 316
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->cze:I

    .line 317
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    .line 318
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    .line 319
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    .line 320
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    .line 321
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    .line 322
    return-void
.end method

.method public final dU(I)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyL:I

    .line 339
    return-void
.end method

.method public final dV(I)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    .line 355
    return-void
.end method

.method public final dW(I)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    .line 371
    return-void
.end method

.method public final dX(I)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    .line 387
    return-void
.end method

.method public final dY(I)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    .line 403
    return-void
.end method

.method public final dZ(I)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    .line 411
    return-void
.end method

.method public final ea(I)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    .line 419
    return-void
.end method

.method public final eb(I)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    .line 427
    return-void
.end method

.method public final ec(I)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    .line 435
    return-void
.end method

.method public final ed(I)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    .line 451
    return-void
.end method

.method public final ee(I)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    .line 467
    return-void
.end method

.method public final ef(I)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    .line 483
    return-void
.end method

.method public final eg(I)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    .line 499
    return-void
.end method

.method public final eh(I)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    .line 507
    return-void
.end method

.method public final ei(I)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    .line 515
    return-void
.end method

.method public final ej(I)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    .line 523
    return-void
.end method

.method public final ek(I)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput p1, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    .line 531
    return-void
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 214
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "peroid"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 218
    const-string v1, "textCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 221
    const-string v1, "textBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 224
    const-string v1, "imageCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 227
    const-string v1, "imageBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 230
    const-string v1, "voiceCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 233
    const-string v1, "voiceBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 236
    const-string v1, "videoCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    :cond_7
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    .line 239
    const-string v1, "videoBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    :cond_8
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    .line 242
    const-string v1, "mobileBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    :cond_9
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    .line 245
    const-string v1, "wifiBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    :cond_a
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    .line 248
    const-string v1, "sysMobileBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    :cond_b
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    .line 251
    const-string v1, "sysWifiBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    :cond_c
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    .line 255
    const-string v1, "textCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    :cond_d
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 258
    const-string v1, "textBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    :cond_e
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 261
    const-string v1, "imageCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cza:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    :cond_f
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 264
    const-string v1, "imageBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    :cond_10
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 267
    const-string v1, "voiceCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    :cond_11
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 270
    const-string v1, "voiceBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    :cond_12
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 273
    const-string v1, "videoCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->cze:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    :cond_13
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 276
    const-string v1, "videoBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    :cond_14
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    .line 279
    const-string v1, "mobileBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    :cond_15
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 282
    const-string v1, "wifiBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    :cond_16
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    .line 285
    const-string v1, "sysMobileBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    :cond_17
    iget v1, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    .line 288
    const-string v1, "sysWifiBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    :cond_18
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 548
    sget-object v0, Lcom/tencent/mm/modelstat/f;->czk:Ljava/lang/String;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyN:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyQ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cze:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyV:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->cyX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    iget v3, p0, Lcom/tencent/mm/modelstat/f;->czj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vU()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/tencent/mm/modelstat/f;->bOY:I

    return v0
.end method
