.class public final Lcom/tencent/mm/plugin/d/a/a;
.super Lcom/tencent/mm/protocal/a/yn;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/d/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/yn;-><init>()V

    return-void
.end method


# virtual methods
.method public final YS()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/tencent/mm/plugin/d/a/a;->fYQ:I

    .line 15
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/d/a/a;->fYQ:I

    .line 16
    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x3

    return v0
.end method

.method public final ht(I)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/mm/plugin/d/a/a;->fYQ:I

    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Lcom/tencent/mm/plugin/d/a/a;->fYQ:I

    .line 23
    return v0
.end method
