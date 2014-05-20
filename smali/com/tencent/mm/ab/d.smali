.class public final Lcom/tencent/mm/ab/d;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public cvI:Ljava/util/LinkedList;

.field public cvJ:I

.field public cvK:I

.field public cvL:I

.field public cvM:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/ab/d;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 58
    packed-switch p2, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    iget-object v1, p1, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/ab/d;->name:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/ab/d;->cvJ:I

    goto :goto_0

    .line 72
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/ab/d;->cvK:I

    goto :goto_0

    .line 76
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/ab/d;->cvL:I

    goto :goto_0

    .line 80
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/ab/d;->cvM:I

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    invoke-virtual {p1, v1, v1, v0}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ab/d;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/ab/d;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 38
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/ab/d;->cvJ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 39
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/ab/d;->cvK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 40
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/ab/d;->cvL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 41
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/ab/d;->cvM:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 42
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/ab/d;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/ab/d;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/ab/d;->a(La/a/a/a/a;Lcom/tencent/mm/ab/d;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/ab/d;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    invoke-static {v1, v1, v0}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23
    iget-object v1, p0, Lcom/tencent/mm/ab/d;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/ab/d;->name:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/ab/d;->cvJ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/ab/d;->cvK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/ab/d;->cvL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/ab/d;->cvM:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    return v0
.end method
