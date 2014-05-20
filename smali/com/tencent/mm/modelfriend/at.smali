.class public final Lcom/tencent/mm/modelfriend/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bOY:I

.field private crA:I

.field private crB:I

.field private crC:Ljava/lang/String;

.field private crD:Ljava/lang/String;

.field private crw:I

.field private crx:I

.field private cry:I

.field private crz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    .line 65
    iput v1, p0, Lcom/tencent/mm/modelfriend/at;->crw:I

    iput v1, p0, Lcom/tencent/mm/modelfriend/at;->crx:I

    iput v1, p0, Lcom/tencent/mm/modelfriend/at;->cry:I

    iput v1, p0, Lcom/tencent/mm/modelfriend/at;->crz:I

    iput v1, p0, Lcom/tencent/mm/modelfriend/at;->crA:I

    iput v1, p0, Lcom/tencent/mm/modelfriend/at;->crB:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crD:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public final Aa()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/tencent/mm/modelfriend/at;->crB:I

    return v0
.end method

.method public final Ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crC:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crC:Ljava/lang/String;

    goto :goto_0
.end method

.method public final Ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crD:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crD:Ljava/lang/String;

    goto :goto_0
.end method

.method public final cL(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    .line 141
    return-void
.end method

.method public final convertFrom(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->crw:I

    .line 85
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->crx:I

    .line 86
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->cry:I

    .line 87
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->crz:I

    .line 88
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->crA:I

    .line 89
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/at;->crB:I

    .line 90
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crC:Ljava/lang/String;

    .line 91
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/at;->crD:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final dk(I)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->crw:I

    .line 145
    return-void
.end method

.method public final dl(I)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->crx:I

    .line 153
    return-void
.end method

.method public final dm(I)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->cry:I

    .line 161
    return-void
.end method

.method public final dn(I)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->crz:I

    .line 169
    return-void
.end method

.method public final do(I)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->crA:I

    .line 177
    return-void
.end method

.method public final dp(I)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput p1, p0, Lcom/tencent/mm/modelfriend/at;->crB:I

    .line 185
    return-void
.end method

.method public final fE(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/at;->crC:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public final fF(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/at;->crD:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public final zW()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "grouopid"

    iget v2, p0, Lcom/tencent/mm/modelfriend/at;->crw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "membernum"

    iget v2, p0, Lcom/tencent/mm/modelfriend/at;->crx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "weixinnum"

    iget v2, p0, Lcom/tencent/mm/modelfriend/at;->cry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 110
    const-string v1, "insert_time"

    iget v2, p0, Lcom/tencent/mm/modelfriend/at;->crz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 113
    const-string v1, "lastupdate_time"

    iget v2, p0, Lcom/tencent/mm/modelfriend/at;->crA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 116
    const-string v1, "needupdate"

    iget v2, p0, Lcom/tencent/mm/modelfriend/at;->crB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 119
    const-string v1, "updatekey"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/at;->Ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelfriend/at;->bOY:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 122
    const-string v1, "groupname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/at;->Ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_7
    return-object v0
.end method

.method public final zX()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/tencent/mm/modelfriend/at;->crw:I

    return v0
.end method

.method public final zY()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/tencent/mm/modelfriend/at;->crx:I

    return v0
.end method

.method public final zZ()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/tencent/mm/modelfriend/at;->cry:I

    return v0
.end method
