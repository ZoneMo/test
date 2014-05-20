.class public final Lcom/tencent/mm/plugin/d/a/d;
.super Lcom/tencent/mm/protocal/a/ct;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/d/a/e;


# instance fields
.field private cmH:Z

.field private dZf:Z

.field private dZg:J

.field private dZh:J

.field private dZi:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/ct;-><init>()V

    return-void
.end method


# virtual methods
.method public final YS()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/tencent/mm/plugin/d/a/d;->fDP:I

    .line 21
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/d/a/d;->fDP:I

    .line 22
    return v0
.end method

.method public final YT()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/d/a/d;->dZf:Z

    return v0
.end method

.method public final YU()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/tencent/mm/plugin/d/a/d;->dZg:J

    return-wide v0
.end method

.method public final YV()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/tencent/mm/plugin/d/a/d;->dZh:J

    return-wide v0
.end method

.method public final aA(J)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/tencent/mm/plugin/d/a/d;->dZh:J

    .line 54
    return-void
.end method

.method public final aB(J)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/tencent/mm/plugin/d/a/d;->dZi:J

    .line 62
    return-void
.end method

.method public final aZ(Z)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/d/a/d;->dZf:Z

    .line 38
    return-void
.end method

.method public final az(J)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/tencent/mm/plugin/d/a/d;->dZg:J

    .line 46
    return-void
.end method

.method public final ba(Z)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/d/a/d;->cmH:Z

    .line 70
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public final ht(I)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/mm/plugin/d/a/d;->fDP:I

    add-int/2addr v0, p1

    .line 28
    iput v0, p0, Lcom/tencent/mm/plugin/d/a/d;->fDP:I

    .line 29
    return v0
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/d/a/d;->cmH:Z

    return v0
.end method
