.class public final Lcom/tencent/mm/storage/i;
.super Lcom/tencent/mm/f/a;
.source "SourceFile"


# instance fields
.field private ggm:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/mm/f/a;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/tencent/mm/f/a;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static aAq()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x10

    return v0
.end method

.method public static aAr()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x8

    return v0
.end method

.method public static f(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 140
    const-string v0, "username"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lP(I)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    and-int/lit8 v0, p0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tA(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    if-eqz p0, :cond_0

    const-string v0, "@qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tB(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    if-eqz p0, :cond_0

    const-string v0, "@fb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tC(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_1

    const-string v1, "@bottle:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@bottle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static tD(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->qm()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    const-string v0, "wx_;wxid_;gh_;a0;a1;a2;a3;a4;a5;a6;a7;a8;a9;q0;q1;q2;q3;q4;q5;q6;q7;q8;q9;qq0;qq1;qq2;qq3;qq4;qq5;qq6;qq7;qq8;qq9;f0;f1;f2;f3;f4;f5;f6;f7;f8;f9;F0;F1;F2;F3;F4;F5;F6;F7;F8;F9;"

    .line 86
    :cond_2
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 87
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 88
    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static tE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-static {p0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object p0

    .line 103
    :cond_1
    const/4 v1, 0x0

    aget-object p0, v0, v1

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const-string p0, ""

    goto :goto_0

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@bottle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static ty(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    if-eqz p0, :cond_0

    const-string v0, "@t.qq.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tz(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    if-eqz p0, :cond_0

    const-string v0, "@qr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final aAd()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/mm/storage/i;->ggm:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final aAl()Z
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/tencent/mm/f/a;->bUh:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aAp()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/tencent/mm/f/a;->field_verifyFlag:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aAs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/mm/storage/i;->field_encryptUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final aAt()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    .line 235
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    array-length v1, v0

    if-lez v1, :cond_0

    .line 242
    array-length v1, v0

    if-le v1, v5, :cond_3

    .line 243
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v3

    aget-object v2, v0, v4

    invoke-static {v1, v2}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/mm/f/a;->bA(Ljava/lang/String;)V

    .line 248
    :goto_1
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v3

    aget-object v2, v0, v4

    aget-object v0, v0, v5

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/tencent/mm/f/a;->bB(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/mm/f/a;->bA(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_3
    array-length v1, v0

    if-ne v1, v5, :cond_4

    .line 250
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/mm/f/a;->bA(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v1, v0, v3

    aget-object v0, v0, v4

    invoke-static {v1, v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/tencent/mm/f/a;->bB(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/tencent/mm/f/a;->bA(Ljava/lang/String;)V

    .line 254
    const-string v0, ""

    invoke-super {p0, v0}, Lcom/tencent/mm/f/a;->bB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bA(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/tencent/mm/f/a;->bA(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public final bB(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/tencent/mm/f/a;->bB(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final bO(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/tencent/mm/f/a;->bO(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/tencent/mm/storage/i;->aAt()V

    .line 148
    return-void
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    .line 152
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v0, ""

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_2

    .line 157
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 159
    :cond_2
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tencent/mm/storage/i;->ggm:Ljava/lang/CharSequence;

    .line 26
    return-void
.end method

.method public final rC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/tencent/mm/f/a;->rC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final rD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/tencent/mm/f/a;->rD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tF(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/tencent/mm/storage/i;->field_encryptUsername:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public final vA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v0, ""

    .line 171
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 169
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 171
    :cond_2
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final vz()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    .line 176
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v0, ""

    .line 183
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 181
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 183
    :cond_2
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
