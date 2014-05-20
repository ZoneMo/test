.class public final Lcom/tencent/mm/protocal/a/fx;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field private desc:Ljava/lang/String;

.field public fGE:Z

.field public fGF:Z

.field private fHN:Lcom/tencent/mm/protocal/a/fy;

.field public fHO:Z

.field public fHP:Ljava/util/LinkedList;

.field public fHQ:Z

.field private fHR:Lcom/tencent/mm/protocal/a/fu;

.field public fHS:Z

.field private fHT:Lcom/tencent/mm/protocal/a/gc;

.field public fHU:Z

.field private fHV:Ljava/lang/String;

.field public fHW:Z

.field private fHX:J

.field public fHY:Z

.field private fHZ:I

.field public fIa:Z

.field private fIb:Lcom/tencent/mm/protocal/a/fw;

.field public fIc:Z

.field private fId:J

.field public fIe:Z

.field private fIf:Lcom/tencent/mm/protocal/a/gb;

.field public fIg:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 8
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHO:Z

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    .line 11
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHQ:Z

    .line 14
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHS:Z

    .line 17
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHU:Z

    .line 20
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHW:Z

    .line 23
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fGE:Z

    .line 26
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fGF:Z

    .line 29
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHY:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHZ:I

    .line 32
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIa:Z

    .line 35
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIc:Z

    .line 38
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIe:Z

    .line 41
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIg:Z

    return-void
.end method


# virtual methods
.method public final S(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHQ:Z

    .line 54
    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/a/fu;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHS:Z

    .line 67
    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/a/fw;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIc:Z

    .line 123
    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHO:Z

    .line 46
    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/a/gb;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIg:Z

    .line 139
    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/a/gc;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHU:Z

    .line 75
    return-object p0
.end method

.method public final a(La/a/a/c/a;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fy;->ns()I

    move-result v0

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->bv(II)V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/fy;->a(La/a/a/c/a;)V

    .line 189
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fu;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/fu;->a(La/a/a/c/a;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    if-eqz v0, :cond_2

    .line 195
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/gc;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gc;->a(La/a/a/c/a;)V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 199
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 202
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 205
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 207
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHY:Z

    if-ne v0, v2, :cond_6

    .line 208
    iget-wide v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHX:J

    invoke-virtual {p1, v3, v0, v1}, La/a/a/c/a;->k(IJ)V

    .line 210
    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIa:Z

    if-ne v0, v2, :cond_7

    .line 211
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHZ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 213
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    if-eqz v0, :cond_8

    .line 214
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 215
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/fw;->a(La/a/a/c/a;)V

    .line 217
    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIe:Z

    if-ne v0, v2, :cond_9

    .line 218
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/fx;->fId:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 220
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    if-eqz v0, :cond_a

    .line 221
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/gb;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gb;->a(La/a/a/c/a;)V

    .line 224
    :cond_a
    return-void
.end method

.method public final aT([B)Lcom/tencent/mm/protocal/a/fx;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 227
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 228
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    .line 230
    :goto_0
    if-lez v0, :cond_d

    .line 231
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 232
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 234
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 231
    :pswitch_0
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/fy;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/fy;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHO:Z

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/ft;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ft;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHQ:Z

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_6
    if-ge v3, v6, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/fu;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/fu;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/fu;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/fu;I)Z

    move-result v0

    goto :goto_7

    :cond_5
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_6
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHS:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_8
    if-ge v3, v6, :cond_8

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/gc;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/gc;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_9
    if-eqz v0, :cond_7

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/gc;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/gc;I)Z

    move-result v0

    goto :goto_9

    :cond_7
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_8
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHU:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHW:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fGE:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fGF:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, La/a/a/a/a;->aPW()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tencent/mm/protocal/a/fx;->fHX:J

    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHY:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHZ:I

    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIa:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_a
    if-ge v3, v6, :cond_a

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/fw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/fw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_b
    if-eqz v0, :cond_9

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/fw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/fw;I)Z

    move-result v0

    goto :goto_b

    :cond_9
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :cond_a
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIc:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPW()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tencent/mm/protocal/a/fx;->fId:J

    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIe:Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_c
    if-ge v3, v6, :cond_c

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/gb;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/gb;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fx;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_d
    if-eqz v0, :cond_b

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fx;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/gb;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/gb;I)Z

    move-result v0

    goto :goto_d

    :cond_b
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_c
    iput-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIg:Z

    move v0, v1

    goto/16 :goto_1

    .line 237
    :cond_d
    return-object p0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final axI()Lcom/tencent/mm/protocal/a/fy;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    return-object v0
.end method

.method public final axJ()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final axK()Lcom/tencent/mm/protocal/a/fu;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    return-object v0
.end method

.method public final axL()Lcom/tencent/mm/protocal/a/gc;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    return-object v0
.end method

.method public final axM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    return-object v0
.end method

.method public final axN()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHX:J

    return-wide v0
.end method

.method public final axO()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHZ:I

    return v0
.end method

.method public final axP()Lcom/tencent/mm/protocal/a/fw;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    return-object v0
.end method

.method public final axQ()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/tencent/mm/protocal/a/fx;->fId:J

    return-wide v0
.end method

.method public final axR()Lcom/tencent/mm/protocal/a/gb;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    return-object v0
.end method

.method public final bK(J)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHX:J

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHY:Z

    .line 107
    return-object p0
.end method

.method public final bL(J)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/tencent/mm/protocal/a/fx;->fId:J

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIe:Z

    .line 131
    return-object p0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final lr(I)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHZ:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fIa:Z

    .line 115
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/fx;->aT([B)Lcom/tencent/mm/protocal/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 146
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHN:Lcom/tencent/mm/protocal/a/fy;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fy;->ns()I

    move-result v0

    invoke-static {v3, v0}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 150
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-static {v1, v4, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->fHR:Lcom/tencent/mm/protocal/a/fu;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/fu;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    if-eqz v1, :cond_2

    .line 155
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->fHT:Lcom/tencent/mm/protocal/a/gc;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/gc;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 158
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 161
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 164
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_5
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHY:Z

    if-ne v1, v3, :cond_6

    .line 167
    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/fx;->fHX:J

    invoke-static {v4, v1, v2}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_6
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIa:Z

    if-ne v1, v3, :cond_7

    .line 170
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/fx;->fHZ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    if-eqz v1, :cond_8

    .line 173
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->fIb:Lcom/tencent/mm/protocal/a/fw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/fw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_8
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIe:Z

    if-ne v1, v3, :cond_9

    .line 176
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/fx;->fId:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    if-eqz v1, :cond_a

    .line 179
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fx;->fIf:Lcom/tencent/mm/protocal/a/gb;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/gb;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_a
    return v0
.end method

.method public final rX(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->fHV:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fHW:Z

    .line 83
    return-object p0
.end method

.method public final rY(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->title:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fGE:Z

    .line 91
    return-object p0
.end method

.method public final rZ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/fx;->desc:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/a/fx;->fGF:Z

    .line 99
    return-object p0
.end method
