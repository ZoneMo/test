.class public final La/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hwA:[B

.field private final hwB:Ljava/io/OutputStream;

.field private final hwC:La/a/a/b/b/a;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, La/a/a/c/a;->hwA:[B

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/c/a;->hwB:Ljava/io/OutputStream;

    .line 24
    invoke-static {p1}, La/a/a/b/b/a;->cx([B)La/a/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    .line 25
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2}, La/a/a/b/b/a;->A(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public final a(ID)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2, p3}, La/a/a/b/b/a;->a(ID)V

    .line 44
    return-void
.end method

.method public final aQo()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, La/a/a/c/a;->hwB:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, La/a/a/c/a;->hwB:Ljava/io/OutputStream;

    iget-object v1, p0, La/a/a/c/a;->hwA:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    iget-object v0, p0, La/a/a/c/a;->hwB:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 168
    :cond_0
    return-void
.end method

.method public final b(ILjava/util/LinkedList;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 135
    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, La/a/a/b/b/a;->bw(II)V

    .line 140
    iget-object v4, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    :goto_1
    invoke-virtual {v4, v1}, La/a/a/b/b/a;->oR(I)V

    .line 141
    :goto_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 145
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, La/a/a/b/b/a;->oV(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, La/a/a/b/b/a;->oU(I)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final bv(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2}, La/a/a/b/b/a;->bv(II)V

    .line 72
    return-void
.end method

.method public final bx(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2}, La/a/a/b/b/a;->bu(II)V

    .line 52
    return-void
.end method

.method public final by(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, La/a/a/c/a;->bx(II)V

    .line 56
    return-void
.end method

.method public final c(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2}, La/a/a/b/b/a;->c(IF)V

    .line 48
    return-void
.end method

.method public final c(IILjava/util/LinkedList;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    if-eqz p3, :cond_0

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The data type was not found, the id used was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v0

    .line 87
    :goto_0
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 132
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/am/b;

    invoke-virtual {p0, p1, v0}, La/a/a/c/a;->c(ILcom/tencent/mm/am/b;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    move v1, v0

    .line 92
    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 93
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, La/a/a/c/a;->a(ID)V

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 97
    :goto_2
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 98
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, La/a/a/c/a;->c(IF)V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_3
    move v1, v0

    .line 102
    :goto_3
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 103
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, La/a/a/c/a;->bx(II)V

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_4
    move v1, v0

    .line 107
    :goto_4
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 108
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, La/a/a/c/a;->k(IJ)V

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :pswitch_5
    move v1, v0

    .line 112
    :goto_5
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 113
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :pswitch_6
    move v1, v0

    .line 117
    :goto_6
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 118
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, La/a/a/c/a;->t(IZ)V

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :pswitch_7
    move v1, v0

    .line 122
    :goto_7
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 123
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/am/a;

    .line 124
    invoke-virtual {v0}, Lcom/tencent/mm/am/a;->ns()I

    move-result v2

    invoke-virtual {p0, p1, v2}, La/a/a/c/a;->bv(II)V

    .line 125
    invoke-virtual {v0, p0}, Lcom/tencent/mm/am/a;->a(La/a/a/c/a;)V

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final c(ILcom/tencent/mm/am/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2}, La/a/a/b/b/a;->b(ILcom/tencent/mm/am/b;)V

    .line 40
    return-void
.end method

.method public final k(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2, p3}, La/a/a/b/b/a;->j(IJ)V

    .line 60
    return-void
.end method

.method public final t(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, La/a/a/c/a;->hwC:La/a/a/b/b/a;

    invoke-virtual {v0, p1, p2}, La/a/a/b/b/a;->s(IZ)V

    .line 36
    return-void
.end method
