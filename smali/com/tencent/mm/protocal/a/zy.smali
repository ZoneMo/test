.class public final Lcom/tencent/mm/protocal/a/zy;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fGe:I

.field public fGf:J

.field public fUN:I

.field public fVg:Ljava/lang/String;

.field public fZI:Lcom/tencent/mm/protocal/a/aac;

.field public fZJ:Lcom/tencent/mm/protocal/a/aac;

.field public fZZ:I

.field public gac:I

.field public gad:Ljava/util/LinkedList;

.field public gae:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->gad:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fZI:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fVg:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fVg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 64
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/zy;->gac:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 65
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->gad:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fZI:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v0, :cond_4

    .line 67
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fZI:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fZI:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aac;->a(La/a/a/c/a;)V

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v0, :cond_5

    .line 71
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zy;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aac;->a(La/a/a/c/a;)V

    .line 74
    :cond_5
    iget v0, p0, Lcom/tencent/mm/protocal/a/zy;->fUN:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 75
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/zy;->gae:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 76
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/zy;->fGe:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 77
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/zy;->fGf:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 78
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/zy;->fZZ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 79
    return-void
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fVg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zy;->fVg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/zy;->gac:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zy;->gad:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fZI:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v1, :cond_2

    .line 40
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zy;->fZI:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zy;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v1, :cond_3

    .line 43
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zy;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_3
    iget v1, p0, Lcom/tencent/mm/protocal/a/zy;->fUN:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/zy;->gae:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/zy;->fGe:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/zy;->fGf:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/zy;->fZZ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    return v0
.end method
